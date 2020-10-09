import 'package:flutter/material.dart';
import 'package:restaurant_search_app/models/models.dart';
import 'package:restaurant_search_app/services/services.dart';
import 'package:restaurant_search_app/widgets/search_form.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String query;
  ApiManager _manager = ApiManager();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Restaurant app'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Column(
            children: [
              SearchForm(
                onSearch: (q) {
                  setState(() {
                    query = q;
                  });
                },
              ),
              query == null
                  ? Text('Not Data')
                  : Expanded(
                      child: FutureBuilder<Restaurant>(
                        future: _manager.searchRestaurants(query),
                        builder: (BuildContext context, snapshot) {
                          print('===>${snapshot.data.restaurants.length}');
                          switch (snapshot.connectionState) {
                            case ConnectionState.none:
                            case ConnectionState.waiting:
                              return new Text('loading...');
                            default:
                              if (snapshot.hasError)
                                return new Text('Error: ${snapshot.error}');
                              else
                                return ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: snapshot.data.restaurants.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var data = snapshot.data.restaurants[index];
                                    return Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            leading:
                                                data.restaurant.thumb != null &&
                                                        data.restaurant.thumb
                                                            .isNotEmpty
                                                    ? Image.network(
                                                        data.restaurant.thumb)
                                                    : Icon(
                                                        Icons.ac_unit,
                                                        color: Colors.purple,
                                                      ),
                                            title: new Text(
                                              data.restaurant.name,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                          }
                        },
                      ),
                    ),
            ],
          ),
        ));
  }
}
